.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;
.super Ljava/lang/Object;
.source "ToastContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setMargin(FFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "marginTop",
            "marginBottom",
            "marginLeft",
            "marginRight"
        }
    .end annotation
.end method

.method public abstract setText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation
.end method

.method public abstract showToastPopup()V
.end method
