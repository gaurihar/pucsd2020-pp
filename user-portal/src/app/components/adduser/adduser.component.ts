import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { Observable, of } from 'rxjs'
import { NgModule } from '@angular/core';
import { HttpClientModule } from "@angular/common/http";


@Component({
  selector: 'app-adduser',
  templateUrl: './adduser.component.html',
  styleUrls: ['./adduser.component.css']
})
export class AdduserComponent implements OnInit {

  constructor(private _api : ApiService) { }

  adduser: Object  = {} ;
  isAdded: Boolean = false;
  Confirmation: String = "New User has been Registered.";
 
  ngOnInit(): void {
  }


  post = function(data){
    this.newuser = {
      "id":data.id,
      "first_name":data.first_name,
      "last_name":data.last_name,
      "email":data.email,
      "password":data.password,
      "contact_number":data.contact_number
    }

    this._api.createUser(this.newuser).subscribe(res => {
       console.log(res);
       this.isAdded=true;
       
    })
  }

}
