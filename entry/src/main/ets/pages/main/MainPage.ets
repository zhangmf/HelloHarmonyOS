import router from '@ohos.router';
import { RouterUrls }from '../../utils/RouterUrls';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  aboutToAppear(){
    console.info("我是打印日志")
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button(){
          Text("Go About Page")
        }
        .margin({ top: 50 })
        .padding({ top: 10, bottom: 10, left: 20, right: 20 })
        .onClick( ()=> {
          router.pushUrl({ url: RouterUrls.aboutPage}).then(()=> {
            console.info('Succeeded in jumping to the about page.')
          }).catch((err)=>{
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}
//