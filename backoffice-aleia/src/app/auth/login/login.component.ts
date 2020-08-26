import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {AuthService} from '../../services/auth.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup;
  showError = false;
  errorMsg: string;

  constructor(private formBuilder: FormBuilder, private authServcie: AuthService, private router: Router) {

  }

  ngOnInit(): void {
    localStorage.clear();
    this.loginForm = this.formBuilder.group({
      identifier: [, Validators.required],
      password: [, Validators.required]
    });
  }

  postLogin() {
    if (this.loginForm.invalid) {
      this.errorMsg = 'Complete your form plz!';
      this.showError = true;
      return;
    }

    this.authServcie.login(this.loginForm.value).subscribe(
      value => {
        this.showError = false;
        // @ts-ignore
        localStorage.setItem('token', value.jwt);
        this.router.navigate(['/qcm']);
      },
      error1 => {
        this.errorMsg = 'Identifier or password invalid!';
        this.showError = true;
      }
    );
  }
}
