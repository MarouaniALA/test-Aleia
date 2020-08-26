import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { QCMRoutingModule } from './qcm-routing.module';
import { QCMComponent } from './qcm.component';


@NgModule({
  declarations: [QCMComponent],
  imports: [
    CommonModule,
    QCMRoutingModule
  ]
})
export class QCMModule { }
