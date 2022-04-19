.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$AHPV2WdFk_Ubf-mKWrlHOjp-23s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/DvfsManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/DvfsManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$AHPV2WdFk_Ubf-mKWrlHOjp-23s;->f$0:Lcom/samsung/android/app/galaxyraw/DvfsManager;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$AHPV2WdFk_Ubf-mKWrlHOjp-23s;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$AHPV2WdFk_Ubf-mKWrlHOjp-23s;->f$0:Lcom/samsung/android/app/galaxyraw/DvfsManager;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$AHPV2WdFk_Ubf-mKWrlHOjp-23s;->f$1:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/DvfsManager;->lambda$acquireDVFSLock$0$DvfsManager(I)V

    return-void
.end method
