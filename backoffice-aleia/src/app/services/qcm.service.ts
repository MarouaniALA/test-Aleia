import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {environment} from '../../environments/environment';
import {ConfirmQCMModel} from '../models/ConfirmQCMModel';

@Injectable({
  providedIn: 'root'
})
export class QcmService {

  private questionsUrl = environment.url + 'questions';
  private checkQcmUrl = environment.url + 'checkQcm';

  constructor(private http: HttpClient) { }

  getQuestions() {
    return this.http.get(this.questionsUrl);
  }

  checkQcm(qcm: ConfirmQCMModel[]) {
    return this.http.post(this.checkQcmUrl, qcm);
  }
}
