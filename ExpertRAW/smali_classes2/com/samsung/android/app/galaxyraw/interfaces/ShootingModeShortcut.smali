.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;
.super Ljava/lang/Object;
.source "ShootingModeShortcut.java"


# virtual methods
.method public abstract isListTranslating()Z
.end method

.method public abstract refreshList()V
.end method

.method public abstract translateList(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method public abstract translateList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation
.end method
