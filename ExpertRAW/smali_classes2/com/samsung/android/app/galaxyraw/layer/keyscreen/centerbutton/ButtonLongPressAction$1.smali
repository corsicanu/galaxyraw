.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;
.super Landroid/os/Handler;
.source "ButtonLongPressAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object v0, p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;->onLongPress()V

    :cond_1
    return-void
.end method
