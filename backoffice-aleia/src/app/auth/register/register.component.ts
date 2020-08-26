import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {AuthService} from '../../services/auth.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {
  registerForm: FormGroup;
  showError = false;
  errorMsg: string;

  constructor(private formBuilder: FormBuilder, private authServcie: AuthService, private router: Router) {

  }

  ngOnInit(): void {
    localStorage.clear();
    this.registerForm = this.formBuilder.group({
      username: [, Validators.required],
      email: [, Validators.required],
      password: [, Validators.required]
    });
  }

  postRegister() {
    if (this.registerForm.invalid) {
      this.errorMsg = 'Complete your form plz!';
      this.showError = true;
      return;
    }

    this.authServcie.register(this.registerForm.value).subscribe(
      value => {
        // @ts-ignore
        localStorage.setItem('token', value.jwt);
        this.router.navigate(['/qcm']);
      },
      error1 => {
        this.showError = true;
        this.errorMsg = 'An error occurred!';
      }
    );
  }
}
