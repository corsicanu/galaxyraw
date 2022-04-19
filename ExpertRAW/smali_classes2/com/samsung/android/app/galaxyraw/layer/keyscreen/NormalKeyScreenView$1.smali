.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$1;
.super Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
.source "NormalKeyScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->handleKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
