.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;
.super Ljava/lang/Object;
.source "PopupLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;"
    }
.end annotation


# virtual methods
.method public abstract enableRotateAction(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method
