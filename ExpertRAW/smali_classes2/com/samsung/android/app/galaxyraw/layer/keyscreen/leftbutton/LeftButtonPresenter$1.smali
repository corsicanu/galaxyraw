.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "LeftButtonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->onQuickViewButtonClick()V

    return-void
.end method
