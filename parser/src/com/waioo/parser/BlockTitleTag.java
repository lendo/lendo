package com.waioo.parser;

import org.htmlparser.tags.CompositeTag;

public class BlockTitleTag extends CompositeTag {
	/**
     * The set of names handled by this tag.
     */
    private static final String[] mIds = new String[] {"BLOCKTITLE"};

    /**
     * The set of tag names that indicate the end of this tag.
     */
    private static final String[] mEnders = new String[] {"BLOCKTITLE"};

    /**
     * The set of end tag names that indicate the end of this tag.
     */
    private static final String[] mEndTagEnders = new String[] {"BLOCKTITLE"};

    /**
     * Create a new title tag.
     */
    public BlockTitleTag()
    {
    }

    /**
     * Return the set of names handled by this tag.
     * @return The names to be matched that create tags of this type.
     */
    public String[] getIds ()
    {
        return (mIds);
    }

    /**
     * Return the set of tag names that cause this tag to finish.
     * @return The names of following tags that stop further scanning.
     */
    public String[] getEnders ()
    {
        return (mEnders);
    }

    /**
     * Return the set of end tag names that cause this tag to finish.
     * @return The names of following end tags that stop further scanning.
     */
    public String[] getEndTagEnders ()
    {
        return (mEndTagEnders);
    }

    /**
     * Get the title text.
     * @return The title.
     */
    public String getBlockTitle()
    {
        return toPlainTextString();
    }

    /**
     * Return a string representation of this tag for debugging.
     * @return A string with the text of the title.
     */
    public String toString()
    {
        return "BLOCK TITLE: " + getBlockTitle();
    }
}
