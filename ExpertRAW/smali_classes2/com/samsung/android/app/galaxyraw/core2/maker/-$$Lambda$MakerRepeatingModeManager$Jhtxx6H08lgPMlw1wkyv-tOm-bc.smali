.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$Jhtxx6H08lgPMlw1wkyv-tOm-bc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$Jhtxx6H08lgPMlw1wkyv-tOm-bc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$Jhtxx6H08lgPMlw1wkyv-tOm-bc;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$Jhtxx6H08lgPMlw1wkyv-tOm-bc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$Jhtxx6H08lgPMlw1wkyv-tOm-bc;->f$1:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->lambda$calculateRepeatingCount$4$MakerRepeatingModeManager(ILcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;Ljava/lang/Integer;)V

    return-void
.end method
