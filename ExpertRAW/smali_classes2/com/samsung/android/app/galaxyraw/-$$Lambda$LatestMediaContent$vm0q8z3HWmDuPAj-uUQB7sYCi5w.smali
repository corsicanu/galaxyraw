.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$vm0q8z3HWmDuPAj-uUQB7sYCi5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$vm0q8z3HWmDuPAj-uUQB7sYCi5w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$vm0q8z3HWmDuPAj-uUQB7sYCi5w;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$vm0q8z3HWmDuPAj-uUQB7sYCi5w;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$vm0q8z3HWmDuPAj-uUQB7sYCi5w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$LatestMediaContent$vm0q8z3HWmDuPAj-uUQB7sYCi5w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->lambda$getSqlSelectionString$5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
