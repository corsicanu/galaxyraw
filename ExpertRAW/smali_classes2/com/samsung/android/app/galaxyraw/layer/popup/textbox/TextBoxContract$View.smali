.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;
.super Ljava/lang/Object;
.source "TextBoxContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setDescription(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation
.end method

.method public abstract showTextBoxPopup()V
.end method

.method public abstract startHideTextBoxTimer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMillis"
        }
    .end annotation
.end method
