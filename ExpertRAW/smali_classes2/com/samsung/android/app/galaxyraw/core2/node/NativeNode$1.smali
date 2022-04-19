.class Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$1;
.super Ljava/lang/Object;
.source "NativeNode.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveUpdate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->updateAppState(I)V

    return-void
.end method
