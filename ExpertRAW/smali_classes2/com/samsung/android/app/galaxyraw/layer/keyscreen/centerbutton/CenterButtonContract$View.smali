.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;
.super Ljava/lang/Object;
.source "CenterButtonContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isRecordingMode()Z
.end method

.method public abstract refreshFloatingShutterButton(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCenterButtonVisible"
        }
    .end annotation
.end method

.method public abstract resetView()V
.end method

.method public abstract startCenterButtonSpringAnimation()V
.end method
