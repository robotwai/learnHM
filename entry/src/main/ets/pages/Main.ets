import { CommonConstants } from '../constans/CommonConstants';
import MockManager from '../mock/MockManager';
import {CardComponent} from  '../view/CardComponent';
import {MainTabViewModel} from  '../viewmodel/MainTabViewModel'
@Entry
@Component
struct Main{

  @State currentIndex: number = 0;
  build(){
    Column(){
      Tabs({
        index: this.currentIndex,
        barPosition: BarPosition.End
      }){
        ForEach(MockManager.getTabItems(),(item: MainTabViewModel)=>{
          TabContent(){
            Column(){
              CardComponent({title: item})
            }
          }
          .tabBar(this.CardTab(item))
        })
      }
      .vertical(false)
      .layoutWeight(1)
      .barMode(BarMode.Fixed)
      .align(Alignment.Center)
      .onChange((index: number)=>{
        this.currentIndex = index;
      })
    }
  }

  @Builder CardTab(item: MainTabViewModel) {
    Column() {
      Image(this.currentIndex === item.index ? item.imageActivated : item.imageOriginal)
        .width($r('app.float.tab_title_image'))
        .height($r('app.float.tab_title_image'))
        .objectFit(ImageFit.Contain)
        .margin({
          top: $r('app.float.tab_image_margin_top'),
          bottom: $r('app.float.tab_image_margin_bottom')
        })
      Text(item.title)
        .fontSize($r('app.float.tab_text_size'))

    }
    .justifyContent(FlexAlign.Center)
    .width(CommonConstants.TAB_BAR_WIDTH_PERCENT)
    .height(CommonConstants.TAB_BAR_HEIGHT_PERCENT)
  }

}