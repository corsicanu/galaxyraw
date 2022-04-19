.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$u6v6BLDhkDoKDhIcfHONIrr2YTk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[D


# direct methods
.method public synthetic constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$u6v6BLDhkDoKDhIcfHONIrr2YTk;->f$0:[D

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$u6v6BLDhkDoKDhIcfHONIrr2YTk;->f$0:[D

    check-cast p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->lambda$processPictureInternal$1([DLandroid/hardware/camera2/params/ColorSpaceTransform;)V

    return-void
.end method
