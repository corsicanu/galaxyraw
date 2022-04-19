.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Sys79xen3XzHNSHE1YMTpJkmGtA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Sys79xen3XzHNSHE1YMTpJkmGtA;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;

    iput-wide p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Sys79xen3XzHNSHE1YMTpJkmGtA;->f$1:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Sys79xen3XzHNSHE1YMTpJkmGtA;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Sys79xen3XzHNSHE1YMTpJkmGtA;->f$1:D

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->lambda$setZoomLevel$17$WatchServiceManager$4(D)V

    return-void
.end method
