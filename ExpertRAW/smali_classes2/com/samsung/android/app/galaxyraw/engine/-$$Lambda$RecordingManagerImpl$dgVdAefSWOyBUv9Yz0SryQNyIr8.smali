.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$dgVdAefSWOyBUv9Yz0SryQNyIr8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$dgVdAefSWOyBUv9Yz0SryQNyIr8;->f$0:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$dgVdAefSWOyBUv9Yz0SryQNyIr8;->f$1:I

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$dgVdAefSWOyBUv9Yz0SryQNyIr8;->f$0:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$dgVdAefSWOyBUv9Yz0SryQNyIr8;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->lambda$resetFlipMode$16(IILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
