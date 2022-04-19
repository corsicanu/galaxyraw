.class public final synthetic Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$SoundManager$l66g2Rn2Dmwlo4T-rv0X7-7M4a4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$SoundManager$l66g2Rn2Dmwlo4T-rv0X7-7M4a4;->f$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$SoundManager$l66g2Rn2Dmwlo4T-rv0X7-7M4a4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$SoundManager$l66g2Rn2Dmwlo4T-rv0X7-7M4a4;->f$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/audio/-$$Lambda$SoundManager$l66g2Rn2Dmwlo4T-rv0X7-7M4a4;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->lambda$initialize$0$SoundManager(Z)V

    return-void
.end method
