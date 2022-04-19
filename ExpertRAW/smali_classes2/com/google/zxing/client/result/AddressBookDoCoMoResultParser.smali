.class public final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private contact([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    array-length p0, p1

    array-length v0, p2

    add-int/2addr p0, v0

    new-array p0, p0, [Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static parseToStructName(Ljava/lang/String;)Lcom/google/zxing/client/result/NameStruct;
    .locals 3

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    new-instance v1, Lcom/google/zxing/client/result/NameStruct;

    invoke-direct {v1}, Lcom/google/zxing/client/result/NameStruct;-><init>()V

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object v2, v1, Lcom/google/zxing/client/result/NameStruct;->familyName:Ljava/lang/String;

    iput-object p0, v1, Lcom/google/zxing/client/result/NameStruct;->givenName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p0, v1, Lcom/google/zxing/client/result/NameStruct;->familyName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 29

    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "N:"

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseToStructName(Ljava/lang/String;)Lcom/google/zxing/client/result/NameStruct;

    move-result-object v1

    const-string v6, "SOUND:"

    invoke-static {v6, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    const-string v6, "TEL:"

    invoke-static {v6, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "TEL-AV:"

    invoke-static {v7, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p0

    invoke-direct {v8, v6, v7}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->contact([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const-string v6, "EMAIL:"

    invoke-static {v6, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v15

    const-string v6, "NOTE:"

    invoke-static {v6, v0, v4}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    const-string v4, "ADR:"

    invoke-static {v4, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v19

    const-string v4, "BDAY:"

    invoke-static {v4, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    invoke-static {v4, v6}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->isStringOfDigits(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v22, v2

    goto :goto_0

    :cond_2
    move-object/from16 v22, v4

    :goto_0
    const-string v2, "URL:"

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v25

    const-string v2, "ORG:"

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    const-string v2, "NICKNAME:"

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object v7, v0

    invoke-static {v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrapName(Lcom/google/zxing/client/result/NameStruct;)[Lcom/google/zxing/client/result/NameStruct;

    move-result-object v9

    invoke-static {v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v7 .. v28}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Lcom/google/zxing/client/result/NameStruct;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/client/result/BirthdayStruct;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Lcom/google/zxing/client/result/AddressStruct;[Lcom/google/zxing/client/result/EventStruct;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p0

    return-object p0
.end method
