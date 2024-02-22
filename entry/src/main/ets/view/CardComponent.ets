
import { MainTabViewModel } from '../viewmodel/MainTabViewModel';
@Component
export struct CardComponent{
  title:MainTabViewModel;
  build(){
    Text(this.title.title)
      .fontSize(30)
      .fontColor(this.title.index===1?Color.Black:Color.Red)
  }
}