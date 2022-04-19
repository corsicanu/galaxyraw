.class public abstract Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeView;
.super Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;
.source "AbstractRecordingModeView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$Presenter;",
        ">",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView<",
        "TP;>;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View<",
        "TP;>;"
    }
.end annotation


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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    return-void
.end method
