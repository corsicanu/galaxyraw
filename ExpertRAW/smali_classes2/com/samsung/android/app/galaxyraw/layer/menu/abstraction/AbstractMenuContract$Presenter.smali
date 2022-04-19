.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;
.super Ljava/lang/Object;
.source "AbstractMenuContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onBackKeyUp()Z
.end method

.method public abstract onEmptyAreaTouch(ZII)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isTouchUp",
            "x",
            "y"
        }
    .end annotation
.end method

.method public abstract onVolumeKeyDown()Z
.end method
