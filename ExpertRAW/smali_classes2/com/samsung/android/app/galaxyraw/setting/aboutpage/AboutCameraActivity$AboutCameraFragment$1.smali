.class Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;
.super Ljava/lang/Object;
.source "AboutCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$000(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->access$100(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$200(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    const/4 v0, -0x2

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$202(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$300(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$300(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f1204c9

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$400(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$500(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$600(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$700(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "update_badge_enabled"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p1, "5218"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startSamsungApps()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$700(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->onUpdateCheckCompleted(I)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$200(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)I

    move-result p0

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$1000(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    goto :goto_1

    :pswitch_2
    const-string p1, "5221"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$800(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    goto :goto_1

    :pswitch_3
    const-string p1, "5222"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->access$900(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0019
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
