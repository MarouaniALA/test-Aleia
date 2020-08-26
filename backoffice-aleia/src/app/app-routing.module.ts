import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';

const routes: Routes = [
  {
  path: 'register', loadChildren: () => import('./auth/register/register.module').then(m => m.RegisterModule)
  },
  {path: '', loadChildren: () => import('./auth/login/login.module').then(m => m.LoginModule)},
  { path: 'qcm', loadChildren: () => import('./qcm/qcm.module').then(m => m.QCMModule) }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
