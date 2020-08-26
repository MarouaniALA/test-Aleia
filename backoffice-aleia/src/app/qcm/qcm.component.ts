import { Component, OnInit } from '@angular/core';
import {QcmService} from '../services/qcm.service';
import {QuestionModel} from '../models/QuestionModel';
import {ConfirmQCMModel} from '../models/ConfirmQCMModel';

@Component({
  selector: 'app-qcm',
  templateUrl: './qcm.component.html',
  styleUrls: ['./qcm.component.scss']
})
export class QCMComponent implements OnInit {

  qcmList: QuestionModel[] = [];
  confirmList: ConfirmQCMModel[] = [];

  score: number;
  showError = false;
  errorMsg: string;
  constructor(private qcmService: QcmService) { }

  ngOnInit(): void {

    this.qcmService.getQuestions().subscribe(
      (value: QuestionModel[]) => {
        this.qcmList = value;
      },
      error1 => {

      }
    );
  }

  addAnswer(quesAns: ConfirmQCMModel) {
    const index = this.confirmList.findIndex(value => value.idQ === quesAns.idQ);
    index !== -1 ? this.confirmList[index].idA = quesAns.idA : this.confirmList.push(quesAns);
  }

  confirmForm() {
    if (this.confirmList.length !== this.qcmList.length) {
      this.showError = true;
      this.errorMsg = 'Complete your form plz!';
      return ;
    }

    this.qcmService.checkQcm(this.confirmList).subscribe(
      value => {
        this.showError = false;
        // @ts-ignore
        this.score = value.score;
      },
      error1 => {
        this.showError = true;
        this.errorMsg = 'An error occurred!';
      }
    );
  }
}
