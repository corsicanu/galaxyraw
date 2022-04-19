.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "AeAfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "camera.action.INACTIVATE_SHOOTING_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->isFocusGuidVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;->hideFocusGuideView()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->access$202(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;Z)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->access$302(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;Z)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;->access$402(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfPresenter;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
