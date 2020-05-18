import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { HomeComponent } from './components/home/home.component';
import { SearchComponent } from './components/search/search.component';
import { UpdateComponent } from './components/update/update.component';
import { AdduserComponent } from './components/adduser/adduser.component';
import { DeleteComponent } from './components/delete/delete.component';
import { DisplayComponent } from './components/display/display.component';


const routes: Routes = [
{path:'home', component:HomeComponent },
{path:'search', component:SearchComponent},
{path:'adduser', component:AdduserComponent},
{path:'update/:id', component:UpdateComponent },
{path:'delete/:id', component:DeleteComponent },
{path:'display', component:DisplayComponent },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
