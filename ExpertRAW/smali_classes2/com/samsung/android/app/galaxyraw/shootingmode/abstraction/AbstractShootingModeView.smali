.class public abstract Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;
.super Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;
.source "AbstractShootingModeView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;",
        ">",
        "Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View<",
        "TP;>;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;",
        "Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;"
    }
.end annotation


# instance fields
.field protected mOrientation:I

.field protected mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
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

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;->updateOrientation()V

    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p0, 0x0

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

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;->updateOrientation()V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-void
.end method

.method protected abstract updateOrientation()V
.end method
