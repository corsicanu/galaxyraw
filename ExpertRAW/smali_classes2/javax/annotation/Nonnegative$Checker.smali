.class public Ljavax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/annotation/Nonnegative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator<",
        "Ljavax/annotation/Nonnegative;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 0

    check-cast p1, Ljavax/annotation/Nonnegative;

    invoke-virtual {p0, p1, p2}, Ljavax/annotation/Nonnegative$Checker;->forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p0

    return-object p0
.end method

.method public forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 5

    instance-of p0, p2, Ljava/lang/Number;

    if-nez p0, :cond_0

    sget-object p0, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p0

    :cond_0
    check-cast p2, Ljava/lang/Number;

    instance-of p0, p2, Ljava/lang/Long;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double p0, v1, v3

    if-gez p0, :cond_1

    goto :goto_0

    :cond_3
    instance-of p0, p2, Ljava/lang/Float;

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 p2, 0x0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-gez p0, :cond_1

    :goto_0
    if-eqz p1, :cond_5

    sget-object p0, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p0

    :cond_5
    sget-object p0, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object p0
.end method
