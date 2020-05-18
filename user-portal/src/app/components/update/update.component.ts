import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { Observable, of } from 'rxjs'
import { NgModule } from '@angular/core';
import { HttpClientModule } from "@angular/common/http";


@Component({
  selector: 'app-update',
  templateUrl: './update.component.html',
  styleUrls: ['./update.component.css']
})
export class UpdateComponent implements OnInit {

  constructor( private _api : ApiService) { }

  updateuser: Object  = {} ;
  isUpdated: Boolean = false;
  Confirmation: String = "User details has been Updated.";

  ngOnInit(): void {
  }
  
  put = function(data){
    this.updateuser = {
      "id":data.id,
      "first_name":data.first_name,
      "last_name":data.last_name,
      "email":data.email,
      "password":data.password
      
    }

    this._api.updateUser(this.updateuser).subscribe(res => {
       console.log(res);
       this.isUpdated=true;
       
    })
  }

}
