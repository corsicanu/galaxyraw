.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$fQB0umxi9xbtcpRgkAcB7x6uxk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$fQB0umxi9xbtcpRgkAcB7x6uxk0;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$fQB0umxi9xbtcpRgkAcB7x6uxk0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$fQB0umxi9xbtcpRgkAcB7x6uxk0;->f$0:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$fQB0umxi9xbtcpRgkAcB7x6uxk0;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->lambda$calculateRepeatingCount$3(Ljava/lang/Integer;Ljava/util/Map;Ljava/util/PriorityQueue;)V

    return-void
.end method
