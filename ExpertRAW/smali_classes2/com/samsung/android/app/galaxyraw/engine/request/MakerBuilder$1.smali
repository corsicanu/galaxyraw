.class Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$1;
.super Ljava/util/HashMap;
.source "MakerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$MakerBuilder$1$mFwHHQv6be73jDrcFbLuPnYl0BU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$MakerBuilder$1$mFwHHQv6be73jDrcFbLuPnYl0BU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerFactory;->MAKER_PRO_RAW_PHOTO:Ljava/lang/Class;

    return-object p0
.end method
