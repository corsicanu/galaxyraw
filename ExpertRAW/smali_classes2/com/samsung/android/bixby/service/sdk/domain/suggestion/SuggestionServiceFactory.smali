.class public final Lcom/samsung/android/bixby/service/sdk/domain/suggestion/SuggestionServiceFactory;
.super Ljava/lang/Object;
.source "SuggestionServiceFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSearchQuerySuggester()Lcom/samsung/android/bixby/service/sdk/domain/suggestion/searchquery/SearchQuerySuggester;
    .locals 1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/searchquery/SearchQuerySuggester;->createInstance()Lcom/samsung/android/bixby/service/sdk/domain/suggestion/searchquery/SearchQuerySuggester;

    move-result-object v0

    return-object v0
.end method
