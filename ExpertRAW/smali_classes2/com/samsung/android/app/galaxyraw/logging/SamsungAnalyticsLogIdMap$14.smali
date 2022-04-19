.class Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;
.super Ljava/util/HashMap;
.source "SamsungAnalyticsLogIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "3013"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "3015"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "3057"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "3060"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "3038"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "3042"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "3046"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v1, "3050"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
