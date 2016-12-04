.class public final Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
.super Ljava/lang/Object;
.source "CacheSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

.field private static final CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

.field private static final SUFFIX:Ljava/lang/String; = ".v2.exo"


# instance fields
.field public final file:Ljava/io/File;

.field public final isCached:Z

.field public final key:Ljava/lang/String;

.field public final lastAccessTimestamp:J

.field public final length:J

.field public final position:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

    .line 32
    const-string/jumbo v0, "^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJZJLjava/io/File;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "length"    # J
    .param p6, "isCached"    # Z
    .param p7, "lastAccessTimestamp"    # J
    .param p9, "file"    # Ljava/io/File;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    .line 115
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    .line 116
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    .line 117
    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->isCached:Z

    .line 118
    iput-object p9, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    .line 119
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    .line 120
    return-void
.end method

.method public static createCacheEntry(Ljava/io/File;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 85
    sget-object v3, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->CACHE_FILE_PATTERN_V2:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 86
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v2

    .line 89
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/util/Util;->unescapeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createCacheEntry(Ljava/lang/String;JJLjava/io/File;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v2

    goto :goto_0
.end method

.method private static createCacheEntry(Ljava/lang/String;JJLjava/io/File;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "position"    # J
    .param p3, "lastAccessTimestamp"    # J
    .param p5, "file"    # Ljava/io/File;

    .prologue
    .line 108
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v7, p3

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJZJLjava/io/File;)V

    return-object v0
.end method

.method public static createClosedHole(Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "position"    # J
    .param p3, "length"    # J

    .prologue
    .line 75
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJZJLjava/io/File;)V

    return-object v0
.end method

.method public static createLookup(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "position"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 67
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v7, v4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJZJLjava/io/File;)V

    return-object v0
.end method

.method public static createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "position"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 71
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v7, v4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJZJLjava/io/File;)V

    return-object v0
.end method

.method public static getCacheFileName(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;
    .locals 4
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "lastAccessTimestamp"    # J

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Util;->escapeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".v2.exo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static upgradeIfNeeded(Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 95
    sget-object v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->CACHE_FILE_PATTERN_V1:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 96
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    .end local p0    # "file":Ljava/io/File;
    :goto_0
    return-object p0

    .line 99
    .restart local p0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->getCacheFileName(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v7

    .line 102
    .local v7, "newCacheFile":Ljava/io/File;
    invoke-virtual {p0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object p0, v7

    .line 103
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->compareTo(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)I
    .locals 8
    .param p1, "another"    # Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    .prologue
    const-wide/16 v6, 0x0

    .line 143
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 147
    :goto_0
    return v2

    .line 146
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    sub-long v0, v2, v4

    .line 147
    .local v0, "startOffsetDiff":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isOpenEnded()Z
    .locals 4

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touch()Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    .locals 7

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 136
    .local v4, "now":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->getCacheFileName(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v6

    .line 137
    .local v6, "newCacheFile":Ljava/io/File;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 138
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->createCacheEntry(Ljava/lang/String;JJLjava/io/File;)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v0

    return-object v0
.end method
