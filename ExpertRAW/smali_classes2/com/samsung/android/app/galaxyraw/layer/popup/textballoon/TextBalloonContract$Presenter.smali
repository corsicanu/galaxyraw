.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;
.super Ljava/lang/Object;
.source "TextBalloonContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onLinkClick()V
.end method

.method public abstract onRadioButton1Click()V
.end method

.method public abstract onRadioButton2Click()V
.end method

.method public abstract onUpdateLayout(IF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "popupWidth"
        }
    .end annotation
.end method
