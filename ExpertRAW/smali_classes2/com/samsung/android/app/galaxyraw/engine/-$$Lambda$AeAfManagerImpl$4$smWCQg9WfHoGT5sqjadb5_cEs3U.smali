.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$4$smWCQg9WfHoGT5sqjadb5_cEs3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$4$smWCQg9WfHoGT5sqjadb5_cEs3U;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$4$smWCQg9WfHoGT5sqjadb5_cEs3U;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$4$smWCQg9WfHoGT5sqjadb5_cEs3U;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$4$smWCQg9WfHoGT5sqjadb5_cEs3U;->f$1:[B

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$4;->lambda$onDofMultiInfoChanged$0$AeAfManagerImpl$4([B)V

    return-void
.end method
