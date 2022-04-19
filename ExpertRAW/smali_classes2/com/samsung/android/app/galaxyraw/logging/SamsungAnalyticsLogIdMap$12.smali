.class Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$12;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "2075"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "2076"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "2086"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "2087"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
