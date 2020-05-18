import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { MatIconModule } from '@angular/material/icon';
import {MatButtonModule} from '@angular/material/button';
import {MatCheckboxModule} from '@angular/material/checkbox';
import {MatToolbarModule} from '@angular/material/toolbar'; 
import {MatFormFieldModule} from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { FormsModule } from '@angular/forms';

import { HttpClientModule } from "@angular/common/http";


import { ApiService } from './services/api.service';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './components/home/home.component';
import { SearchComponent } from './components/search/search.component';
import { UpdateComponent } from './components/update/update.component';
import { AdduserComponent } from './components/adduser/adduser.component';
import { DeleteComponent } from './components/delete/delete.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { DisplayComponent } from './components/display/display.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    SearchComponent,
    UpdateComponent,
    AdduserComponent,
    DeleteComponent,
    DisplayComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatButtonModule,
    MatCheckboxModule,
    MatToolbarModule,
    MatFormFieldModule,
    MatIconModule ,
    MatInputModule,
    FormsModule ,
    HttpClientModule

  ],
  providers: [ ApiService ],
  bootstrap: [AppComponent]
})
export class AppModule { }
