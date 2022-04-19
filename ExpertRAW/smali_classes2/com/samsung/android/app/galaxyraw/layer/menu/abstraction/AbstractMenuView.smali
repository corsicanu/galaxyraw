.class public abstract Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;
.super Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;
.source "AbstractMenuView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;",
        ">",
        "Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$View<",
        "TP;>;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field protected mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

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

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;->onVolumeKeyDown()Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
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

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;->onBackKeyUp()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-interface {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;->onEmptyAreaTouch(ZII)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "presenter"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-void
.end method
