.class public final synthetic Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$WUs6Xpl5-wBqc1vzj09qbK05Aoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$WUs6Xpl5-wBqc1vzj09qbK05Aoc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$WUs6Xpl5-wBqc1vzj09qbK05Aoc;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$WUs6Xpl5-wBqc1vzj09qbK05Aoc;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$WUs6Xpl5-wBqc1vzj09qbK05Aoc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$WUs6Xpl5-wBqc1vzj09qbK05Aoc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method
