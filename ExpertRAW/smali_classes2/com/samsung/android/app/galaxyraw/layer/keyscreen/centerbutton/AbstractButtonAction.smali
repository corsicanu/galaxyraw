.class public abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;
.super Ljava/lang/Object;
.source "AbstractButtonAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ButtonEventListener;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

.field mEnable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->mEnable:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method cancelTouchEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->mEnable:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    return-void
.end method

.method protected abstract onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "area"
        }
    .end annotation
.end method
