import { CommonConstants } from '../constans/CommonConstants';
import {MainTabViewModel} from '../viewmodel/MainTabViewModel'
class MockManager{
  getTabItems(): Array<MainTabViewModel>{
    let tabs: Array<MainTabViewModel>= [];
    for (let i =0; i<CommonConstants.MAIN_TAB_SIZE;i++){
      tabs.push(this.setTabValue(i))
    }
    return tabs;
  }

  setTabValue(index:number): MainTabViewModel{
  let tabItem = new MainTabViewModel();
    tabItem.index = index;
  switch (index){
    case 0:
      tabItem.imageOriginal = $r('app.media.main_unselect');
      tabItem.imageActivated = $r('app.media.main_selected');
      tabItem.title = $r('app.string.main_title');
    break;
    case 1:
      tabItem.imageOriginal = $r('app.media.me_unselect');
      tabItem.imageActivated = $r('app.media.me_selected');
      tabItem.title = $r('app.string.me_title');
    break;
    case 2:
      tabItem.imageOriginal = $r('app.media.setting');
      tabItem.imageActivated = $r('app.media.setting');
      tabItem.title = $r('app.string.set_title');
    break;
  }
  return tabItem;
}
}
let mockManager = new MockManager();

export default mockManager as MockManager;