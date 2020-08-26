import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {environment} from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private loginUrl = environment.url + 'auth/local';
  private registerUrl = environment.url + 'auth/local/register';

  constructor(private http: HttpClient) { }

  login(user) {
    return this.http.post(this.loginUrl, user);
  }

  register(user) {
    return this.http.post(this.registerUrl, user);

  }
}
