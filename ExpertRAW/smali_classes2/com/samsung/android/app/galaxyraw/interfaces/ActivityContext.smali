.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/ActivityContext;
.super Ljava/lang/Object;
.source "ActivityContext.java"


# virtual methods
.method public abstract acquireDVFSLock(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisecond"
        }
    .end annotation
.end method

.method public abstract getActivity()Landroidx/appcompat/app/AppCompatActivity;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDisplayRotation()I
.end method

.method public abstract isDestroying()Z
.end method

.method public abstract isRecreating()Z
.end method

.method public abstract isRestarted()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract requestSystemKeyEvents(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation
.end method
