import {AnswerModel} from './answerModel';

export interface QuestionModel {
  id: number;
  question: string;
  answers: AnswerModel[];
}
