.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$hLKRzsCUzynd7xIiXYYvZDJtcA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[F


# direct methods
.method public synthetic constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$hLKRzsCUzynd7xIiXYYvZDJtcA4;->f$0:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$hLKRzsCUzynd7xIiXYYvZDJtcA4;->f$0:[F

    check-cast p1, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->lambda$processPictureInternal$0([FLandroid/hardware/camera2/params/RggbChannelVector;)V

    return-void
.end method
