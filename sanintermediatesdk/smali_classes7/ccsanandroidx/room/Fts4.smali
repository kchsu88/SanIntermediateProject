.class public interface abstract annotation Lccsanandroidx/room/Fts4;
.super Ljava/lang/Object;
.source "Fts4.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lccsanandroidx/room/Fts4;
        contentEntity = Ljava/lang/Object;
        languageId = ""
        matchInfo = .enum Lccsanandroidx/room/FtsOptions$MatchInfo;->FTS4:Lccsanandroidx/room/FtsOptions$MatchInfo;
        notIndexed = {}
        order = .enum Lccsanandroidx/room/FtsOptions$Order;->ASC:Lccsanandroidx/room/FtsOptions$Order;
        prefix = {}
        tokenizer = "simple"
        tokenizerArgs = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract contentEntity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract languageId()Ljava/lang/String;
.end method

.method public abstract matchInfo()Lccsanandroidx/room/FtsOptions$MatchInfo;
.end method

.method public abstract notIndexed()[Ljava/lang/String;
.end method

.method public abstract order()Lccsanandroidx/room/FtsOptions$Order;
.end method

.method public abstract prefix()[I
.end method

.method public abstract tokenizer()Ljava/lang/String;
.end method

.method public abstract tokenizerArgs()[Ljava/lang/String;
.end method
