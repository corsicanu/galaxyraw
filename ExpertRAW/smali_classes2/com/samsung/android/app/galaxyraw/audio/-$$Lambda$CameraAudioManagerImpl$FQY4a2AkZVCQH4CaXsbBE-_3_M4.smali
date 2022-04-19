.class public final synthetic Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$FQY4a2AkZVCQH4CaXsbBE-_3_M4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$FQY4a2AkZVCQH4CaXsbBE-_3_M4;->f$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$FQY4a2AkZVCQH4CaXsbBE-_3_M4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$FQY4a2AkZVCQH4CaXsbBE-_3_M4;->f$0:Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$CameraAudioManagerImpl$FQY4a2AkZVCQH4CaXsbBE-_3_M4;->f$1:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;->lambda$onCameraSettingChanged$0$CameraAudioManagerImpl(I)V

    return-void
.end method
