.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$CU2pyuHxaxxAzwznSBtzHOdy-Zo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$CU2pyuHxaxxAzwznSBtzHOdy-Zo;->f$0:Z

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$CU2pyuHxaxxAzwznSBtzHOdy-Zo;->f$0:Z

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lambda$enableFocusPeaking$0(ZLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
