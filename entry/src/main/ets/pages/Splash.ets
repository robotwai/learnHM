
import router from '@ohos.router';
@Entry
@Component
struct Splash {
  build(){
    Column(){
      Image($r('app.media.lz_splash'))
        .objectFit(ImageFit.Fill)
    }
  }
  onPageShow() {
    console.log("onPageShow");
    this.onTimeOut();
  }
  onTimeOut(){
    console.log("ontimeout");
    setTimeout(function (){
      console.log("ontimeout callback");
      router.pushUrl({
        url: "pages/Main"
      });
    },3000);
  }
}