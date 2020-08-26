'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */


module.exports = {
  checkQcm: async ctx => {
    console.log(ctx.state.user.id);
    const body = ctx.request.body;
    let questionsId = [];
    let answersId = [];
    for (let rep of body) {
      questionsId.push(rep.idQ);
      answersId.push(rep.idA);
    }

    let score = 0;
    let entities = await strapi.query('questions').find({id_in: questionsId});


    for (let rep of body) {
      let entity = entities.find(ques => ques.id === rep.idQ);
      let answ = entity.answers.find(answer => answer.id === rep.idA);
      if (answ.isCorrect) {
        score += 3;
      } else {
        score = score - 1;
      }
    }
    console.log(score);
    return await strapi.query('user-participation').create(
      {score, answers: answersId, questions: questionsId, user: ctx.state.user.id});
    },
};
