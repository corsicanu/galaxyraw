.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LowMemoryListener"
.end annotation


# static fields
.field public static final LOW_MEMORY_CRITICAL:I = 0xb

.field public static final LOW_MEMORY_WARNING:I = 0xa


# virtual methods
.method public abstract onLowMemory(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method
