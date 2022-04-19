.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$ZujOVoBCHiezyL0hHr1APLMHbsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$ZujOVoBCHiezyL0hHr1APLMHbsY;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$ZujOVoBCHiezyL0hHr1APLMHbsY;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->lambda$ZujOVoBCHiezyL0hHr1APLMHbsY(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Landroid/graphics/Bitmap;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
