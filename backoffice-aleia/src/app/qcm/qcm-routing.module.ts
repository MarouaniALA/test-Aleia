import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { QCMComponent } from './qcm.component';

const routes: Routes = [{ path: '', component: QCMComponent }];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class QCMRoutingModule { }
