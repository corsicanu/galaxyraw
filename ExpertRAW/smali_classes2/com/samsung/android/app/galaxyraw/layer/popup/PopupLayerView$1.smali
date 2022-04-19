.class Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView$1;
.super Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
.source "PopupLayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->hideAllPopup()V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
